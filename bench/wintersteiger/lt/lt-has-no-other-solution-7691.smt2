(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.481863721470109584998908758279867470264434814453125p-365 {+ 2170121276456146 -365 (1.97179e-110)}
; Y = 1.089267053425927667120731712202541530132293701171875p244 {+ 402023068545470 244 (3.07931e+073)}
; 1.481863721470109584998908758279867470264434814453125p-365 < 1.089267053425927667120731712202541530132293701171875p244 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010010010 #b0111101101011011011010111011110011010111110011010010)))
(assert (= y (fp #b0 #b10011110011 #b0001011011011010001101001010001100010011000110111110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
