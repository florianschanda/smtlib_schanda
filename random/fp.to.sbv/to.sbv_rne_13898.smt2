(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10111110010101010011101)))
;; x should be Float32(0xCADF2A9D [Rational(-14625437, 2), -7312718.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -7312718

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100100000110101010110010))
;; z should be -7312718

(assert (= y z))
(check-sat)
(exit)
