(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1383160815837090051871882678824476897716522216796875p557 {+ 622920253479739 557 (5.36995e+167)}
; 1.1383160815837090051871882678824476897716522216796875p557 | == 1.1383160815837090051871882678824476897716522216796875p557
; [HW: 1.1383160815837090051871882678824476897716522216796875p557] 

; mpf : + 622920253479739 557
; mpfd: + 622920253479739 557 (5.36995e+167) class: Pos. norm. non-zero
; hwf : + 622920253479739 557 (5.36995e+167) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000101100 #b0010001101101000101011101100011011101001101100111011)))
(assert (= r (fp #b0 #b11000101100 #b0010001101101000101011101100011011101001101100111011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
