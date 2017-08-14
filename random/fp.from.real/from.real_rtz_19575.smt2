(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8D0037A1)))
;; x should be Float32(0x8D0037A1 [Rational(-8402849, 21267647932558653966460912964485513216), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 49898894633.0 212676479325586539664609129644855132160000.0))))
;; w should be Float32(0x0C984782 [Rational(4989889, 21267647932558653966460912964485513216), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
