(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0724476741417208192075349870719946920871734619140625p955 {+ 326275318268513 955 (3.26604e+287)}
; 1.0724476741417208192075349870719946920871734619140625p955 | == 1.0724476741417208192075349870719946920871734619140625p955
; [HW: 1.0724476741417208192075349870719946920871734619140625p955] 

; mpf : + 326275318268513 955
; mpfd: + 326275318268513 955 (3.26604e+287) class: Pos. norm. non-zero
; hwf : + 326275318268513 955 (3.26604e+287) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110111010 #b0001001010001011111011100100011100011100001001100001)))
(assert (= r (fp #b0 #b11110111010 #b0001001010001011111011100100011100011100001001100001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
