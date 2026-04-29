(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4428548108384575687779260988463647663593292236328125p461 {+ 1994440761071309 461 (8.59114e+138)}
; 1.4428548108384575687779260988463647663593292236328125p461 S == 1.6987376553420234781555109293549321591854095458984375p230
; [HW: 1.6987376553420234781555109293549321591854095458984375p230] 

; mpf : + 3146834644228071 230
; mpfd: + 3146834644228071 230 (2.93106e+069) class: Pos. norm. non-zero
; hwf : + 3146834644228071 230 (2.93106e+069) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111001100 #b0111000101011110111011101101000101101101011011001101)))
(assert (= r (fp #b0 #b10011100101 #b1011001011100000011110001001001000101101011111100111)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
