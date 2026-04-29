(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6295907656460058010594593724817968904972076416015625p-965 {+ 2835424737559257 -965 (5.22556e-291)}
; 1.6295907656460058010594593724817968904972076416015625p-965 S == 1.8053203403529278769923394065699540078639984130859375p-483
; [HW: 1.8053203403529278769923394065699540078639984130859375p-483] 

; mpf : + 3626840384727327 -483
; mpfd: + 3626840384727327 -483 (7.2288e-146) class: Pos. norm. non-zero
; hwf : + 3626840384727327 -483 (7.2288e-146) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000111010 #b1010000100101100110111000100010001010000001011011001)))
(assert (= r (fp #b0 #b01000011100 #b1100111000101001011110010100110010011110100100011111)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
