(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +sbv_8_bound)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000101 #b11111110000000000000000)))
;; x should be Float32(0x42FF0000 [Rational(255, 2), 127.500000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RNA x)))
;; y should be 128

(declare-const z (_ BitVec 8))
(assert (= z #b10000000))
;; z should be 128

(assert (not (= y z)))
(check-sat)
(exit)
