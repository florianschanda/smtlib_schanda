(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4539015438031313021127743922988884150981903076171875p387 {+ 2044190823534675 387 (4.58293e+116)}
; 1.4539015438031313021127743922988884150981903076171875p387 S == 1.7052281629172860721865845334832556545734405517578125p193
; [HW: 1.7052281629172860721865845334832556545734405517578125p193] 

; mpf : + 3176065291725469 193
; mpfd: + 3176065291725469 193 (2.14078e+058) class: Pos. norm. non-zero
; hwf : + 3176065291725469 193 (2.14078e+058) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110000010 #b0111010000110010111001000011111000111101000001010011)))
(assert (= r (fp #b0 #b10011000000 #b1011010010001001110101010011011111110010101010011101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
