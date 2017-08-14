(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b01001000 #b01001100000000101110011)))
;; x should be Float32(0x24260173 [Rational(10879347, 302231454903657293676544), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 2719837843.0 75557863725914323419136000.0))))
;; w should be Float32(0x24260177 [Rational(10879351, 302231454903657293676544), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
