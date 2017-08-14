(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC95EA598)))
;; x should be Float32(0xC95EA598 [Rational(-1823923, 2), -911961.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 291827699689.0 320000.0)))))
;; w should be Float32(0xC95EA599 [Rational(-14591385, 16), -911961.562500])

(assert (distinct x w))
(check-sat)
(exit)
