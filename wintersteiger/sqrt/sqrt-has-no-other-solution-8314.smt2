(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2436400696423219880415445004473440349102020263671875p728 {+ 1097257326853683 728 (1.75603e+219)}
; 1.2436400696423219880415445004473440349102020263671875p728 S == 1.1151861143514663066156344939372502267360687255859375p364
; [HW: 1.1151861143514663066156344939372502267360687255859375p364] 

; mpf : + 518752141671519 364
; mpfd: + 518752141671519 364 (4.1905e+109) class: Pos. norm. non-zero
; hwf : + 518752141671519 364 (4.1905e+109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011010111 #b0011111001011111001100100001001100011011111000110011)))
(assert (= r (fp #b0 #b10101101011 #b0001110101111100110101100101001000010111110001011111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
