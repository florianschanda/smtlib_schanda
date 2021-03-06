(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x1E82B23C)))
;; x should be Float32(0x1E82B23C [Rational(2141327, 154742504910672534362390528), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11001000 #b11001000100100011001011)))
;; y should be Float32(0x646448CB [Rational(16844411739987123372032), 16844411739987123372032.000000])

(declare-const result Float32)
(assert (= result (fp.add RTZ x y)))
(assert (not (= result ((_ to_fp 8 24) #x646448CB))))
(check-sat)
(exit)
