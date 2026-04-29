(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7114697398109195436433083159499801695346832275390625p617 {- 3204174855097841 617 (-9.30843e+185)}
; -1.7114697398109195436433083159499801695346832275390625p617 | == 1.7114697398109195436433083159499801695346832275390625p617
; [HW: 1.7114697398109195436433083159499801695346832275390625p617] 

; mpf : + 3204174855097841 617
; mpfd: + 3204174855097841 617 (9.30843e+185) class: Pos. norm. non-zero
; hwf : + 3204174855097841 617 (9.30843e+185) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101000 #b1011011000100010111000011000000010010100110111110001)))
(assert (= r (fp #b0 #b11001101000 #b1011011000100010111000011000000010010100110111110001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
