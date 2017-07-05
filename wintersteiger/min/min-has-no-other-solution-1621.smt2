(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.2275170845730449808996809224481694400310516357421875p-361 {+ 1024645857303587 -361 (2.61336e-109)}
; +oo m 1.2275170845730449808996809224481694400310516357421875p-361 == 1.2275170845730449808996809224481694400310516357421875p-361
; [HW: 1.2275170845730449808996809224481694400310516357421875p-361] 

; mpf : + 1024645857303587 -361
; mpfd: + 1024645857303587 -361 (2.61336e-109) class: Pos. norm. non-zero
; hwf : + 1024645857303587 -361 (2.61336e-109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b01010010110 #b0011101000111110100011110100010110000101110000100011)))
(assert (= r (fp #b0 #b01010010110 #b0011101000111110100011110100010110000101110000100011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
