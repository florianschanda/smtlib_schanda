(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b00110000110110000011100)))
;; x should be Float32(0x4A186C1C [Rational(2497287), 2497287.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 2497287

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001001100001101100000111))
;; z should be 2497287

(assert (= y z))
(check-sat)
(exit)
