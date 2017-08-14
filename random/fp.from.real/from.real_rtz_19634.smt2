(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10101100000100111111000)))
;; x should be Float32(0x805609F8 [Rational(-704831, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 56386495539.0 7136238463529799405291429847247475681913733120000.0)))))
;; w should be Float32(0x805609F9 [Rational(-5638649, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
