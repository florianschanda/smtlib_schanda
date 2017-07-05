(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.69014364865600708043302802252583205699920654296875p179 {- 3108130678919308 179 (-1.29507e+054)}
; Y = -1.7718973325246387684472892942721955478191375732421875p155 {- 3476316539126243 155 (-8.0926e+046)}
; -1.69014364865600708043302802252583205699920654296875p179 = -1.7718973325246387684472892942721955478191375732421875p155 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010110010 #b1011000010101101010000010001000010000101000010001100)))
(assert (= y (fp #b1 #b10010011010 #b1100010110011011000100000100011100010000000111100011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
