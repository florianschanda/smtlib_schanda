(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.269064078493809422099047878873534500598907470703125p543 {+ 1211756883643506 543 (3.65402e+163)}
; 1.269064078493809422099047878873534500598907470703125p543 S == 1.5931503874360444239499656760017387568950653076171875p271
; [HW: 1.5931503874360444239499656760017387568950653076171875p271] 

; mpf : + 2671311863831635 271
; mpfd: + 2671311863831635 271 (6.04485e+081) class: Pos. norm. non-zero
; hwf : + 2671311863831635 271 (6.04485e+081) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000011110 #b0100010011100001011000100010100110101000110001110010)))
(assert (= r (fp #b0 #b10100001110 #b1001011111011000101101000010101110100101110001010011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
