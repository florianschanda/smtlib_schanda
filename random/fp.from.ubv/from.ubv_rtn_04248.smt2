(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b01100101111111110111011100001111001100101000101000011010010111010101011010110010010111001100000100101100000101110111010110110010))
;; x should be 135578478084009363228802286624295056818

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.eq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
