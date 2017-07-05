(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9224946675230067949513568237307481467723846435546875p-783 {+ 4154546640907883 -783 (3.77901e-236)}
; 1.9224946675230067949513568237307481467723846435546875p-783 | == 1.9224946675230067949513568237307481467723846435546875p-783
; [HW: 1.9224946675230067949513568237307481467723846435546875p-783] 

; mpf : + 4154546640907883 -783
; mpfd: + 4154546640907883 -783 (3.77901e-236) class: Pos. norm. non-zero
; hwf : + 4154546640907883 -783 (3.77901e-236) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011110000 #b1110110000101000100111000100101110111110111001101011)))
(assert (= r (fp #b0 #b00011110000 #b1110110000101000100111000100101110111110111001101011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
