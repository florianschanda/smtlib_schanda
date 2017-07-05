(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.403848659620985817042537746601738035678863525390625p613 {+ 1818772672983146 613 (4.77208e+184)}
; 1.403848659620985817042537746601738035678863525390625p613 S == 1.6756184885713010235264164293766953051090240478515625p306
; [HW: 1.6756184885713010235264164293766953051090240478515625p306] 

; mpf : + 3042715173374329 306
; mpfd: + 3042715173374329 306 (2.18451e+092) class: Pos. norm. non-zero
; hwf : + 3042715173374329 306 (2.18451e+092) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100100 #b0110011101100010101000000011000110011011000001101010)))
(assert (= r (fp #b0 #b10100110001 #b1010110011110101010101010101000011111100100101111001)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
