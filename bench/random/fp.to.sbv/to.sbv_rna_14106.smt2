(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10110000111010001011010)))
;; x should be Float32(0x4AD8745A [Rational(7092781), 7092781.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be 7092781

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011011000011101000101101))
;; z should be 7092781

(assert (= y z))
(check-sat)
(exit)
