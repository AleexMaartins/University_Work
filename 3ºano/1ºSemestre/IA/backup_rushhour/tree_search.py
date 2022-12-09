
# Module: tree_search
# 
# This module provides a set o classes for automated
# problem solving through tree search:
#    SearchDomain  - problem domains
#    SearchProblem - concrete problems to be solved
#    SearchNode    - search tree nodes
#    SearchTree    - search tree with the necessary methods for searhing
#
#  (c) Luis Seabra Lopes
#  Introducao a Inteligencia Artificial, 2012-2019,
#  Inteligência Artificial, 2014-2019

from abc import ABC, abstractmethod
from commonMAIS import*
from dominio import*
# Dominios de pesquisa
# Permitem calcular
# as accoes possiveis em cada estado, etc
class SearchDomain(ABC):

    # construtor
    @abstractmethod
    def __init__(self):
        pass

    # lista de accoes possiveis num estado
    @abstractmethod
    def actions(self, state):
        pass

    # resultado de uma accao num estado, ou seja, o estado seguinte
    @abstractmethod
    def result(self, state, action):
        pass

    # test if the given "goal" is satisfied in "state"
    @abstractmethod
    def satisfies(self, state):
        pass
###############Editado por nós###########################################
class SearchProblem: ### feito
    def __init__(self, domain):
        self.domain = domain
        self.initial = domain.initial_map

    def goal_test(self, state):
        return self.domain.satisfies(state)
        
# Nos de uma arvore de pesquisa
class SearchNode:
    def __init__(self,state,parent, action = None): 
        self.state = state
        self.parent = parent
        self.action = action # se for root, a action que gerou este node é None else é a action do newnode


    def __str__(self):
        return "no(" + str(self.state) + "," + str(self.parent) + ")"

    def __repr__(self):
        return str(self)     

# Arvores de pesquisa
class SearchTree:

    # construtor
    def __init__(self,problem, strategy='breadth'): 
        self.problem = problem
        root = SearchNode(problem.initial, None)
        self.open_nodes = [root]
        self.strategy = strategy
        self.solution = None

    @property # ex 3
    def length(self):
        return self.solution.depth


    def get_path(self, node): #path é chamado com o node final
        aux = node
        actions = [] 
       # if actions != []:
        while aux.parent!=None:                
            actions.append(aux.action) 
            aux = aux.parent
        return list(reversed(actions))


    # procurar a solucao
    def search(self):
        estados_conhecidos = set()
        while self.open_nodes != []:
            node = self.open_nodes.pop(0)
            estados_conhecidos.add(node.state.grid_string)

            if self.problem.goal_test(node.state): # se ja chegamos ao goal
                self.solution = node
                return self.get_path(node)
                

            lnewnodes = [] # se ainda nao chegamos ao goal
            for a in self.problem.domain.actions(node.state): # por cada açao possivel neste node
                newstate = self.problem.domain.result_two(node.state,a) # ver o resultado de cada açao possivel
                if newstate not in estados_conhecidos: #  -- se resultado not in path...
                    # print(newstate)
                    newmap = Map(str(node.state.pieces) + " " + newstate + " " + str(node.state.movements))
                    newnode = SearchNode(newmap,node,a) 
                    lnewnodes.append(newnode)
                    estados_conhecidos.add(newstate)

            self.add_to_open(lnewnodes)
        return None
   
    #juntar novos nos a lista de nos abertos de acordo com a estrategia
    
    def add_to_open(self,lnewnodes):

        if self.strategy == 'breadth':          #feito
            self.open_nodes.extend(lnewnodes)
            
        elif self.strategy == 'depth':          #feito
            self.open_nodes[:0] = lnewnodes

        elif self.strategy == 'uniform':   
            self.open_nodes.extend(lnewnodes)
            self.open_nodes.sort(key = lambda x : x.cost)
        
        elif self.strategy == 'greedy':    
            self.open_nodes.extend(lnewnodes)
            self.open_nodes.sort(key = lambda x : x.heuristic)                    
        
        elif self.strategy == 'a*':        
            self.open_nodes.extend(lnewnodes)
            self.open_nodes.sort(key = lambda x : x.heuristic + x.cost) 