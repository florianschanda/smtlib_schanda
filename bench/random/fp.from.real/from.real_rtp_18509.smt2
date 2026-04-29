(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b01011011111110000001100)))
;; x should be Float32(0xC9ADFC0C [Rational(-2850563, 2), -1425281.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 15302977.0 16.0)))))
;; w should be Float32(0xC9698141 [Rational(-15302977, 16), -956436.062500])

(assert (distinct x w))
(check-sat)
(exit)
