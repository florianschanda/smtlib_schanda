(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00010110001101001101111001001110))
;; x should be 1634de4e

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x1634DE4E [Rational(5926695, 40564819207303340847894502572032), 0.000000])

(assert (not (= y (fp #b0 #b00101100 #b01101001101111001001110))))
(check-sat)
(exit)
