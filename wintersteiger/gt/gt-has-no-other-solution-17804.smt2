(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.072248009932037060565335195860825479030609130859375p-999 {- 325376110608182 -999 (-2.00138e-301)}
; Y = -1.5009370447058507647142278074170462787151336669921875p-570 {- 2256019887873347 -570 (-3.88387e-172)}
; -1.072248009932037060565335195860825479030609130859375p-999 > -1.5009370447058507647142278074170462787151336669921875p-570 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000011000 #b0001001001111110110110000111011111011011111100110110)))
(assert (= y (fp #b1 #b00111000101 #b1000000000111101011010010000000001011101110101000011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
