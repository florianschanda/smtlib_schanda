(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.67802549284733348855525036924518644809722900390625p-782 {+ 3053555356934948 -782 (6.59693e-236)}
; 1.67802549284733348855525036924518644809722900390625p-782 S == 1.295386233077738591390470901387743651866912841796875p-391
; [HW: 1.295386233077738591390470901387743651866912841796875p-391] 

; mpf : + 1330301329219278 -391
; mpfd: + 1330301329219278 -391 (2.56845e-118) class: Pos. norm. non-zero
; hwf : + 1330301329219278 -391 (2.56845e-118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011110001 #b1010110110010011000101000010010110100010001100100100)))
(assert (= r (fp #b0 #b01001111000 #b0100101110011110011011101010001011000001111011001110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
