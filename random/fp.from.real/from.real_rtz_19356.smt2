(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10100001000000011011100)))
;; x should be Float32(0x005080DC [Rational(1318967, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 4390425989.0 892029807941224925661428730905934460239216640000.0)))))
;; w should be Float32(0x80359814 [Rational(-878085, 178405961588244985132285746181186892047843328), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
