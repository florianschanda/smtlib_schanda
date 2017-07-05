(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4214696874268641924032863244065083563327789306640625p976 {+ 1898130727243585 976 (9.07848e+293)}
; 1.4214696874268641924032863244065083563327789306640625p976 | == 1.4214696874268641924032863244065083563327789306640625p976
; [HW: 1.4214696874268641924032863244065083563327789306640625p976] 

; mpf : + 1898130727243585 976
; mpfd: + 1898130727243585 976 (9.07848e+293) class: Pos. norm. non-zero
; hwf : + 1898130727243585 976 (9.07848e+293) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001111 #b0110101111100101011011111111101111000000111101000001)))
(assert (= r (fp #b0 #b11111001111 #b0110101111100101011011111111101111000000111101000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
