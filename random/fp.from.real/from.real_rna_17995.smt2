(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10100000011110111011101)))
;; x should be Float32(0xCAD03DDD [Rational(-13647325, 2), -6823662.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 1358330159.0 256.0)))))
;; w should be Float32(0xCAA1ECF2 [Rational(-5305977), -5305977.000000])

(assert (distinct x w))
(check-sat)
(exit)
