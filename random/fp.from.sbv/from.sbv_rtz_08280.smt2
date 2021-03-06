(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1011111110001001100000100010101111010011001101110110000001011101))
;; x should be -4645038415917129635

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTZ x)))
(assert (fp.eq r (fp #b1 #b10111101 #b00000001110110011111011)))
(check-sat)
(exit)
