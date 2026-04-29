(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8963671436498212852228562042000703513622283935546875p557 {+ 4036878734128491 557 (8.94602e+167)}
; 1.8963671436498212852228562042000703513622283935546875p557 S == 1.9474943613011161946957372492761351168155670166015625p278
; [HW: 1.9474943613011161946957372492761351168155670166015625p278] 

; mpf : + 4267135252491353 278
; mpfd: + 4267135252491353 278 (9.45834e+083) class: Pos. norm. non-zero
; hwf : + 4267135252491353 278 (9.45834e+083) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000101100 #b1110010101111000010100010010111100101111010101101011)))
(assert (= r (fp #b0 #b10100010101 #b1111001010001110111111011000111011101110110001011001)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
