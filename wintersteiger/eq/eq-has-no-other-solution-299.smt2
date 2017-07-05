(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9727859213849494590675703875604085624217987060546875p149 {+ 4381038313060523 149 (1.40783e+045)}
; Y = 1.64356765314654040821551461704075336456298828125p-649 {+ 2898371042898464 -649 (7.03591e-196)}
; 1.9727859213849494590675703875604085624217987060546875p149 = 1.64356765314654040821551461704075336456298828125p-649 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010010100 #b1111100100001000011111111000011001011011100010101011)))
(assert (= y (fp #b0 #b00101110110 #b1010010011000000110110011000011100000111001000100000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
