(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01010000011101110110100001100100))
;; x should be 50776864

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x50776864 [Rational(16603254784), 16603254784.000000])

(assert (not (= y (fp #b0 #b10100000 #b11101110110100001100100))))
(check-sat)
(exit)
