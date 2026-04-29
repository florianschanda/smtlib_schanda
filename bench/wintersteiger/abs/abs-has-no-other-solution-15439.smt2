(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4913269371843096422480812179856002330780029296875p603 {- 2212739811220344 603 (-4.95063e+181)}
; -1.4913269371843096422480812179856002330780029296875p603 | == 1.4913269371843096422480812179856002330780029296875p603
; [HW: 1.4913269371843096422480812179856002330780029296875p603] 

; mpf : + 2212739811220344 603
; mpfd: + 2212739811220344 603 (4.95063e+181) class: Pos. norm. non-zero
; hwf : + 2212739811220344 603 (4.95063e+181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001011010 #b0111110111000111100110100010011011011001101101111000)))
(assert (= r (fp #b0 #b11001011010 #b0111110111000111100110100010011011011001101101111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
