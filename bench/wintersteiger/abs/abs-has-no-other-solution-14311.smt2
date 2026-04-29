(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2821411862907297063429723493754863739013671875p985 {- 1270650941444800 985 (-4.19258e+296)}
; -1.2821411862907297063429723493754863739013671875p985 | == 1.2821411862907297063429723493754863739013671875p985
; [HW: 1.2821411862907297063429723493754863739013671875p985] 

; mpf : + 1270650941444800 985
; mpfd: + 1270650941444800 985 (4.19258e+296) class: Pos. norm. non-zero
; hwf : + 1270650941444800 985 (4.19258e+296) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111011000 #b0100100000111010011001111001111111111001001011000000)))
(assert (= r (fp #b0 #b11111011000 #b0100100000111010011001111001111111111001001011000000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
