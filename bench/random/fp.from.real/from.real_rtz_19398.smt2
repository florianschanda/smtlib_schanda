(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0052F43F)))
;; x should be Float32(0x0052F43F [Rational(5436479, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 23565842907.0 7136238463529799405291429847247475681913733120000.0)))))
;; w should be Float32(0x8023F568 [Rational(-294573, 89202980794122492566142873090593446023921664), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
