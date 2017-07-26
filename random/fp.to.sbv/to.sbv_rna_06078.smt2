(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x5B2D6B96)))
;; x should be Float32(0x5B2D6B96 [Rational(48813462960209920), 48813462960209920.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be 48813462960209920

(declare-const z (_ BitVec 64))
(assert (= z #b0000000010101101011010111001011000000000000000000000000000000000))
;; z should be 48813462960209920

(assert (= y z))
(check-sat)
(exit)
