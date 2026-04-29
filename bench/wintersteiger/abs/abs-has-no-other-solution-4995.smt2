(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.931154640708292458128880753065459430217742919921875p467 {- 4193547692918174 467 (-7.35911e+140)}
; -1.931154640708292458128880753065459430217742919921875p467 | == 1.931154640708292458128880753065459430217742919921875p467
; [HW: 1.931154640708292458128880753065459430217742919921875p467] 

; mpf : + 4193547692918174 467
; mpfd: + 4193547692918174 467 (7.35911e+140) class: Pos. norm. non-zero
; hwf : + 4193547692918174 467 (7.35911e+140) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111010010 #b1110111001100000001001101000100101011100010110011110)))
(assert (= r (fp #b0 #b10111010010 #b1110111001100000001001101000100101011100010110011110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
