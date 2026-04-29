(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.18035147578260524170445933123119175434112548828125p508 {+ 812230839130260 508 (9.8912e+152)}
; 1.18035147578260524170445933123119175434112548828125p508 | == 1.18035147578260524170445933123119175434112548828125p508
; [HW: 1.18035147578260524170445933123119175434112548828125p508] 

; mpf : + 812230839130260 508
; mpfd: + 812230839130260 508 (9.8912e+152) class: Pos. norm. non-zero
; hwf : + 812230839130260 508 (9.8912e+152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111011 #b0010111000101011100000111010101001000101100010010100)))
(assert (= r (fp #b0 #b10111111011 #b0010111000101011100000111010101001000101100010010100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
