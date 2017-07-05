(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.908690651658181192118490798748098313808441162109375p-934 {- 4092378880202838 -934 (-1.31438e-281)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.908690651658181192118490798748098313808441162109375p-934 M -oo == -1.908690651658181192118490798748098313808441162109375p-934
; [HW: -1.908690651658181192118490798748098313808441162109375p-934] 

; mpf : - 4092378880202838 -934
; mpfd: - 4092378880202838 -934 (-1.31438e-281) class: Neg. norm. non-zero
; hwf : - 4092378880202838 -934 (-1.31438e-281) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001011001 #b1110100010011111111100110101011100001101100001010110)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b1 #b00001011001 #b1110100010011111111100110101011100001101100001010110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
