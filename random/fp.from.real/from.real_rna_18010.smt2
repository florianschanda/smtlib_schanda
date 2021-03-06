(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; on low bound (exclusive)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC94A6D38)))
;; x should be Float32(0xC94A6D38 [Rational(-1658279, 2), -829139.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 26532465.0 32.0)))))
;; w should be Float32(0xC94A6D39 [Rational(-13266233, 16), -829139.562500])

(assert (distinct x w))
(check-sat)
(exit)
