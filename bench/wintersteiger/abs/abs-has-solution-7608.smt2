(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8683324334139559397272023488767445087432861328125p-248 {+ 3910621623556808 -248 (4.13062e-075)}
; 1.8683324334139559397272023488767445087432861328125p-248 | == 1.8683324334139559397272023488767445087432861328125p-248
; [HW: 1.8683324334139559397272023488767445087432861328125p-248] 

; mpf : + 3910621623556808 -248
; mpfd: + 3910621623556808 -248 (4.13062e-075) class: Pos. norm. non-zero
; hwf : + 3910621623556808 -248 (4.13062e-075) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100000111 #b1101111001001011000010001100101110010001101011001000)))
(assert (= r (fp #b0 #b01100000111 #b1101111001001011000010001100101110010001101011001000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
