(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9ADFC0C)))
;; x should be Float32(0xC9ADFC0C [Rational(-2850563, 2), -1425281.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 729744203.0 512.0)))))
;; w should be Float32(0xC9ADFC0D [Rational(-11402253, 8), -1425281.625000])

(assert (distinct x w))
(check-sat)
(exit)
