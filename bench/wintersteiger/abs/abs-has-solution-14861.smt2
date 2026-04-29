(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8330833660204108870317440960207022726535797119140625p914 {+ 3751873936778081 914 (2.53862e+275)}
; 1.8330833660204108870317440960207022726535797119140625p914 | == 1.8330833660204108870317440960207022726535797119140625p914
; [HW: 1.8330833660204108870317440960207022726535797119140625p914] 

; mpf : + 3751873936778081 914
; mpfd: + 3751873936778081 914 (2.53862e+275) class: Pos. norm. non-zero
; hwf : + 3751873936778081 914 (2.53862e+275) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110010001 #b1101010101000100111100111001001111100110001101100001)))
(assert (= r (fp #b0 #b11110010001 #b1101010101000100111100111001001111100110001101100001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
