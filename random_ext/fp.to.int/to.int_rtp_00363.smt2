(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTP +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00111101 #b01101000100001000111011)))
;; x should be Float32(0x1EB4423B [Rational(11813435, 618970019642690137449562112), 0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 1

(declare-const z Int)
(assert (= z 1))
(assert (not (= y z)))
