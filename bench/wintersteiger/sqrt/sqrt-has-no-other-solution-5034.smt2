(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.11095005109952094102254704921506345272064208984375p-712 {+ 499674608788540 -712 (5.15629e-215)}
; 1.11095005109952094102254704921506345272064208984375p-712 S == 1.054016153149239354291921699768863618373870849609375p-356
; [HW: 1.054016153149239354291921699768863618373870849609375p-356] 

; mpf : + 243267127194902 -356
; mpfd: + 243267127194902 -356 (7.18073e-108) class: Pos. norm. non-zero
; hwf : + 243267127194902 -356 (7.18073e-108) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100110111 #b0001110001100111001110001111100011110110010000111100)))
(assert (= r (fp #b0 #b01010011011 #b0000110111010100000000001010101100111011010100010110)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
