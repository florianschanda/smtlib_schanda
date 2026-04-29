(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xB811ECE2)))
;; x should be Float32(0xB811ECE2 [Rational(-4781681, 137438953472), -0.000035])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 95633633767.0 2748779069440000.0)))))
;; w should be Float32(0xB811ECE3 [Rational(-9563363, 274877906944), -0.000035])

(assert (distinct x w))
(check-sat)
(exit)
