(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00011100010100100001110)))
;; x should be Float32(0x000E290E [Rational(464007, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 64673169525612582160426984367849097346572961595389.0 49732323640978664215538224814682084010045615079734771744046397689315949701253337553305600.0))))
;; w should be Float32(0x000E290E [Rational(464007, 356811923176489970264571492362373784095686656), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
