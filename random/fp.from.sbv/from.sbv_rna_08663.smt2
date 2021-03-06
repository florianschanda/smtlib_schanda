(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b00101100110100000100010100000110110110011011011111100001000100111011001011110101011100000100011010001101001101101011010001100100))
;; x should be 59567429590123713057410608489683137636

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNA x)))
(assert (fp.geq r ((_ to_fp 11 53) #x47C66822836CDBF1)))
(check-sat)
(exit)
