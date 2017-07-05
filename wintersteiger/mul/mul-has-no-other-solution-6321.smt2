(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1670224993203281993459086152142845094203948974609375p-836 {+ 752202465701519 -836 (2.54685e-252)}
; Y = -1.7478232135890381382381519870250485837459564208984375p-653 {- 3367896346058599 -653 (-4.67639e-197)}
; 1.1670224993203281993459086152142845094203948974609375p-836 * -1.7478232135890381382381519870250485837459564208984375p-653 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010111011 #b0010101011000001111111001000110001000110111010001111)))
(assert (= y (fp #b1 #b00101110010 #b1011111101110001010101111001010110001101111101100111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
