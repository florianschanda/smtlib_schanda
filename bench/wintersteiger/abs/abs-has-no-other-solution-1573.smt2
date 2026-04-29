(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6427972050161379069521672136033885180950164794921875p-110 {+ 2894901252985475 -110 (1.26556e-033)}
; 1.6427972050161379069521672136033885180950164794921875p-110 | == 1.6427972050161379069521672136033885180950164794921875p-110
; [HW: 1.6427972050161379069521672136033885180950164794921875p-110] 

; mpf : + 2894901252985475 -110
; mpfd: + 2894901252985475 -110 (1.26556e-033) class: Pos. norm. non-zero
; hwf : + 2894901252985475 -110 (1.26556e-033) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010001 #b1010010010001110010110111000110110000001001010000011)))
(assert (= r (fp #b0 #b01110010001 #b1010010010001110010110111000110110000001001010000011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
