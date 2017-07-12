(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 241267377417389130420618357832713355353) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10110101100000100110100000011011111111110001101001110101000001000110111110010110001011100010011110101101010001011100000001011001))
;; x should be 241267377417389130420618357832713355353
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.leq r ((_ to_fp 8 24) #x7F358268)))
(check-sat)
(exit)
