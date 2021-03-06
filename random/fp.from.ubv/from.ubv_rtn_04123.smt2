(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b01110101001001100000100001110101010110011101101101010001000011101100001000011101000001010011111000000000001011101011110101110100))
;; x should be 155717154344240627374442661096457158004

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r (fp #b0 #b11111101 #b11010100100110000010000)))
(check-sat)
(exit)
