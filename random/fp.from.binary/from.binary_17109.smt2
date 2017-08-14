(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00000000001111000111000101010110))
;; x should be 3c7156

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x003C7156 [Rational(1980587, 356811923176489970264571492362373784095686656), 0.000000])

(assert (not (= y (fp #b0 #b00000000 #b01111000111000101010110))))
(check-sat)
(exit)
