(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1538174544712000990642764008953236043453216552734375p-545 {+ 692732230639575 -545 (1.00182e-164)}
; 1.1538174544712000990642764008953236043453216552734375p-545 | == 1.1538174544712000990642764008953236043453216552734375p-545
; [HW: 1.1538174544712000990642764008953236043453216552734375p-545] 

; mpf : + 692732230639575 -545
; mpfd: + 692732230639575 -545 (1.00182e-164) class: Pos. norm. non-zero
; hwf : + 692732230639575 -545 (1.00182e-164) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111011110 #b0010011101100000100101001010100010000001111111010111)))
(assert (= r (fp #b0 #b00111011110 #b0010011101100000100101001010100010000001111111010111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
