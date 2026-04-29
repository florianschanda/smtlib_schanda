(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01110011110011011000111)))
;; x should be Float32(0x8039E6C7 [Rational(-3794631, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 15185036867.0 7136238463529799405291429847247475681913733120000.0))))
;; w should be Float32(0x00172BA8 [Rational(189813, 89202980794122492566142873090593446023921664), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
