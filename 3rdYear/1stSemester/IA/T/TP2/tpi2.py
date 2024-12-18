#encoding: utf8

# YOUR NAME: Alexandre Costa Martins
# YOUR NUMBER:103552

# COLLEAGUES WITH WHOM YOU DISCUSSED THIS ASSIGNMENT:
# - 
# - ...

from semantic_network import *
from bayes_net import *
from constraintsearch import *



class MySN(SemanticNetwork):

    def __init__(self):
        SemanticNetwork.__init__(self)
        # ADD CODE HERE IF NEEDED
        pass

    def is_object(self,user,obj):
        # IMPLEMENT HERE
        for d in self.declarations:

            if d.user == user and isinstance(d.relation, Member) and d.relation.entity1 == obj:
                return True
            if d.user == user and isinstance(d.relation, Association) and d.relation.card == None and (d.relation.entity1 == obj or d.relation.entity2 == obj):
                return True
        return False

    def is_type(self,user,type):
        # IMPLEMENT HERE
        for d in self.declarations:
            if d.user == user and isinstance(d.relation, Member) and d.relation.entity2 == type:
                return True
            if d.user == user and isinstance(d.relation, Subtype) and (d.relation.entity1 == type or d.relation.entity2 == type):
                return True
            if d.user == user and isinstance(d.relation, Association) and d.relation.card != None and d.relation.entity2 == type :
                return True
        return False


    def infer_type(self, user, obj):
        dicionario = {}
        for d in self.declarations:
            if d.user == user and isinstance(d.relation, Member) and d.relation.entity1 == obj:
                return d.relation.entity2
            if d.user == user and isinstance(d.relation, Association) and d.relation.card != None:
                dicionario[d.relation.name] = self.infer_signature(user, d.relation.name)

        for d in self.declarations:    
            if isinstance(d.relation, Association) :
                if d.relation.name in dicionario:
                    if d.user == user and d.relation.entity1 == obj:
                        return dicionario[d.relation.name][0]
                    if d.user == user and d.relation.entity2 == obj:
                        return dicionario[d.relation.name][1]
                if d.relation.name not in dicionario and (d.relation.entity1 == obj or d.relation.entity2 == obj):
                    return '__unknown__'
                
    def infer_signature(self, user, assoc):
        for d in self.declarations:
            if d.user == user and isinstance(d.relation, Association) and d.relation.name == assoc:
                if d.relation.card != None:
                    return (d.relation.entity1,d.relation.entity2)
                else:
                    return self.infer_type(user, d.relation.entity1), self.infer_type(user, d.relation.entity2)                    
class MyBN(BayesNet):

    def __init__(self):
        BayesNet.__init__(self)
        # ADD CODE HERE IF NEEDED
        pass

    def markov_blanket(self, var):
        variables = set()
        tempo = set()
        for key in self.dependencies:
            tempo.add(key)
            for values in self.dependencies[key]:
                # array de tuplos -> [x,y], [a,b], p
                pv,pf,p = values
                for x in pv:
                    tempo.add(x)
                for x in pf:
                    tempo.add(x)
            if var in tempo:
                tempo.discard(var)
                for t in tempo:
                    variables.add(t)

            tempo = set()
        varasdasdas = list(variables)
        return varasdasdas


class MyCS(ConstraintSearch):

    def __init__(self,domains,constraints):
        ConstraintSearch.__init__(self,domains,constraints)
        self.domains = domains
        self.constraints = constraints
        
    def propagate(self,domains,var):
        # IMPLEMENT HERE
        edges_to_propagate = [(v, z) for (v, z) in self.constraints if z == var]
        while edges_to_propagate:
            xj, xi = edges_to_propagate.pop()
            num_values = len(domains[xj])
            c = self.constraints[xj, xi]
            domains[xj] = [
                val_j
                for val_j in domains[xj]
                if any(c(xj, val_j, xi, val_i) for val_i in domains[xi])
            ]
            if len(domains[xj]) < num_values:
                edges_to_propagate += [(xk, z) for (xk, z) in self.constraints if z == xj]
        return domains
    def higherorder2binary(self,ho_c_vars,unary_c):
        # IMPLEMENT HERE
        pass


