(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.173937396611843819727027948829345405101776123046875p786 {+ 783344394566894 786 (4.77773e+236)}
; 1.173937396611843819727027948829345405101776123046875p786 | == 1.173937396611843819727027948829345405101776123046875p786
; [HW: 1.173937396611843819727027948829345405101776123046875p786] 

; mpf : + 783344394566894 786
; mpfd: + 783344394566894 786 (4.77773e+236) class: Pos. norm. non-zero
; hwf : + 783344394566894 786 (4.77773e+236) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100010001 #b0010110010000111001010010100010111111111110011101110)))
(assert (= r (fp #b0 #b11100010001 #b0010110010000111001010010100010111111111110011101110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
