(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.5106431763074608110031249452731572091579437255859375p991 {- 2299732418537567 991 (-3.16146e+298)}
; -oo > -1.5106431763074608110031249452731572091579437255859375p991 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b11111011110 #b1000001010111001100000101101111000101010100001011111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
