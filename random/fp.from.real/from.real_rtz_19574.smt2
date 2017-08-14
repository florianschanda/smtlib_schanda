(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8D0037A1)))
;; x should be Float32(0x8D0037A1 [Rational(-8402849, 21267647932558653966460912964485513216), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 42014257927.0 106338239662793269832304564822427566080000.0)))))
;; w should be Float32(0x8D0037A3 [Rational(-8402851, 21267647932558653966460912964485513216), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
